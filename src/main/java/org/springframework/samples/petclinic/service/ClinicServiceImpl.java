/*
 * Copyright 2002-2013 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springframework.samples.petclinic.service;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.dao.DataAccessException;
import org.springframework.samples.petclinic.model.Owner;
import org.springframework.samples.petclinic.model.Pet;
import org.springframework.samples.petclinic.model.PetType;
import org.springframework.samples.petclinic.model.Vet;
import org.springframework.samples.petclinic.model.Visit;
import org.springframework.samples.petclinic.repository.OwnerRepository;
import org.springframework.samples.petclinic.repository.PetRepository;
import org.springframework.samples.petclinic.repository.VetRepository;
import org.springframework.samples.petclinic.repository.VisitRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.code.ssm.api.InvalidateAssignCache;
import com.google.code.ssm.api.InvalidateMultiCache;
import com.google.code.ssm.api.InvalidateSingleCache;
import com.google.code.ssm.api.ParameterValueKeyProvider;
import com.google.code.ssm.api.ReadThroughAssignCache;
import com.google.code.ssm.api.ReadThroughMultiCache;
import com.google.code.ssm.api.ReadThroughMultiCacheOption;
import com.google.code.ssm.api.ReadThroughSingleCache;
import com.google.code.ssm.api.UpdateAssignCache;
 

/**
 * Mostly used as a facade for all Petclinic controllers
 * Also a placeholder for @Transactional and @Cacheable annotations
 *
 * @author Michael Isvy
 * @author (modified by) Michael Ashby, minor changes to make compatible with Simple-Spring-Memcached (SSM).
 */
@Service
public class ClinicServiceImpl implements ClinicService {

    private PetRepository petRepository;
    private VetRepository vetRepository;
    private OwnerRepository ownerRepository;
    private VisitRepository visitRepository;
    
    public ClinicServiceImpl(){}
    
    @Autowired
    public ClinicServiceImpl(PetRepository petRepository, VetRepository vetRepository, OwnerRepository ownerRepository, VisitRepository visitRepository) {
        this.petRepository = petRepository;
        this.vetRepository = vetRepository;
        this.ownerRepository = ownerRepository;
        this.visitRepository = visitRepository;
    }

    @Override
    @Transactional(readOnly = true, timeout = 60)
    public Collection<PetType> findPetTypes() throws DataAccessException {
        return petRepository.findPetTypes();
    }

    @Override
    @Transactional(readOnly = true, timeout = 60)
    @ReadThroughSingleCache( namespace="Owner", expiration = 300)
    public List<Owner> findOwnerByLastName(@ParameterValueKeyProvider List<String> lastName) throws DataAccessException {
    	return (List<Owner>) ownerRepository.findByLastName( lastName.get(0));
    }

    @Override
    @Transactional(readOnly = true, timeout = 60)
    @ReadThroughAssignCache(namespace="OwnersAll" , assignedKey ="0", expiration = 300)
    public List<Owner> findOwnerByLastName(String lastName) throws DataAccessException {
    	return (List<Owner>) ownerRepository.findByLastName( lastName);
    }
    
    @Override
    @Transactional(timeout = 60)
    @InvalidateSingleCache(namespace = "Owner"  )
    @InvalidateAssignCache(namespace = "OwnersAll" , assignedKey ="0" )
    public void saveOwner(Owner owner, @ParameterValueKeyProvider int id) throws DataAccessException {
    	
        ownerRepository.save(owner);
    }
    
    @Override
    @Transactional(readOnly = true, timeout = 60)
    @ReadThroughSingleCache( namespace="Owner" , expiration = 300)
    public Owner findOwnerById(@ParameterValueKeyProvider int id) throws DataAccessException {

        return ownerRepository.findById(id);
    }

    @Override
    @Transactional(readOnly = true, timeout = 60)
    @ReadThroughAssignCache( namespace="Vets" , assignedKey ="0", expiration = 300)
    public Collection<Vet> findVets( ) throws DataAccessException {
    	
        return vetRepository.findAll();
    }
    
    @Override
    @Transactional(timeout = 60)
    public void saveVisit(Visit visit) throws DataAccessException {
        visitRepository.save(visit);
    }


    @Override
    @Transactional(readOnly = true, timeout = 60)
    public Pet findPetById(int id) throws DataAccessException {
        return petRepository.findById(id);
    }

    @Override
    @Transactional(timeout = 60)
    public void savePet(Pet pet) throws DataAccessException {
        petRepository.save(pet);
    }

}
