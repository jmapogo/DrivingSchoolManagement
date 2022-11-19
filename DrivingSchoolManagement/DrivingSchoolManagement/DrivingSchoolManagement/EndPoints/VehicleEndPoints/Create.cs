using Ardalis.ApiEndpoints;
using AutoMapper;
using MapogoSoft.DrivingSchoolAPI.Data.Service;
using Microsoft.AspNetCore.Mvc;
using Swashbuckle.AspNetCore.Annotations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks; 

namespace DrivingSchoolManagement.EndPoints.VehicleEndPoints
{
    public class Create : EndpointBaseAsync
    .WithRequest<CreateVehicleCommand>
    .WithActionResult
    {
        private readonly VehicleService _repository;
        private readonly IMapper _mapper;

        public Create(VehicleService repository,
            IMapper mapper)
        {
            _repository = repository;
            _mapper = mapper;
        }
        [HttpPost("/vehicles")]
        [SwaggerOperation(
            Summary = "Creates a new Vehicle",
            Description = "Creates a new Vehicle",
            OperationId = "Vehicle.Create",
            Tags = new[] { "VehicleEndpoint" }
        )
] 
        public override Task<ActionResult> HandleAsync(CreateVehicleCommand request, CancellationToken cancellationToken = default)
        {
            //    var vehicle = new VehicleService(,);
            //    _mapper.Map(request, vehicle);
            //    await _repository.AddAsync(vehicle);

            //    var result = _mapper.Map<CreateVehicleResult>(vehicle);
            //    return Ok(result);
            return null;
        }
    }
}
